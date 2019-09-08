using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using greenslate.repo.core;

namespace greenslate.api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserProjectsController : ControllerBase
    {
        private readonly GreenslateContext _context;

        public UserProjectsController(GreenslateContext context)
        {
            _context = context;
        }

        // GET: api/UserProjects
        [HttpGet]
        public async Task<ActionResult<IEnumerable<UserProject>>> GetUserProject()
        {
            return await _context.UserProject.ToListAsync();
        }

        // GET: api/UserProjects/5
        [HttpGet("{id}")]
        public async Task<IEnumerable<UserProjectList>> GetUserProject(int id)
        {
            var userProject = await _context.UserProject
                .Where(x => x.User.Id == id)
                .Select(upl => new UserProjectList {
                    ProjectId = upl.ProjectId,
                    StartDate = upl.Project.StartDate,
                    TimeToStart = TimeToStart(upl.Project.StartDate, upl.AssignedDate),
                    EndDate = upl.Project.EndDate,
                    Credits = upl.Project.Credits,
                    Status = upl.IsActive ? "Active" : "Inactive"
                })
                .ToListAsync<UserProjectList>();

            return userProject;
        }


        private string TimeToStart(DateTime startDate, DateTime assignedDate)
        {
            var timeToStart = startDate - assignedDate;

            if (timeToStart.Days > 0)
                return timeToStart.Days.ToString();

            return "Started";
        }
    }
}
