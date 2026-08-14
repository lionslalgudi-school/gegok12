import { registerCertificate } from './gcertificate'
import { registerTimetable } from './gtimetable'
import { registerQuiz } from './gquiz'
import { registerConference } from './gvideoroom'
import { registerInventory } from './ginventory'
import { registerFees } from './gfees'

// later you can import:

export default function registerCustomAddon(app) {

    registerTimetable(app)

    registerQuiz(app)

    registerConference(app)

    registerInventory(app)

    registerCertificate(app)
    registerFees(app)


  
}
