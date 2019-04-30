#include "master-controller.h"

namespace cm {
namespace controllers {

// Costruttore della classe "Implementation" (classe privata della classe MasterController)
class MasterController::Implementation
{
public:
    Implementation(MasterController* _masterController) :
        masterController(_masterController)
    {
        navigationController = new NavigationController(masterController);
    }

    MasterController* masterController{nullptr};
    NavigationController* navigationController{nullptr};
    QString welcomeMessage = "This is MasterController to Major Tom";
};


// Costruttore di "MasterController"
MasterController::MasterController(QObject* parent)
    :QObject (parent)
{
    implementation.reset(new Implementation(this));
}


// Distruttore di "MasterController"
MasterController::~MasterController()
{
}


NavigationController* MasterController::navigationController()
{
    return implementation->navigationController;
}

// Metodo che restituisce la stringa con il messaggio di benvenuto.
const QString& MasterController::welcomeMessage() const
{
    return implementation->welcomeMessage;
}


}}
