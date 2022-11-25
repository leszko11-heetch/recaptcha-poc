import Foundation
import UIKit
import RecaptchaEnterprise

class ViewController: UIViewController {
  var recaptchaClient: RecaptchaClient?

  override func viewDidLoad() {
    super.viewDidLoad()
    Task {
      let (recaptchaClient, error) = await Recaptcha.getClient(siteKey: "KEY")
      if let recaptchaClient = recaptchaClient {
        self.recaptchaClient = recaptchaClient
          print("Get RecaptchaClient")
      }
      if let error = error {
        print("RecaptchaClient creation error: \(error).")
      }
    }
  }
}
