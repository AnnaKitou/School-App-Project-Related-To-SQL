using Kitou_School_Project.RepositoryService;
using Kitou_School_Project.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kitou_School_Project.Controller
{
    class TrainerController
    {
        TrainerRepository trainerService = new TrainerRepository();
        public void ReadTrainers()
        {
            var trainers = trainerService.GetAll();
            TrainerView.PrintTrainers(trainers);
        }
    }
}
