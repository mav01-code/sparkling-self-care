import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("About Us")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sparkling self-care - Your Personalised Physical Therapy Companion.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Welcome to  Sparkling self-care,  your dedicated partner in achieving optimal physical wellness and rehabilitation. Our mission is to make personalized, effective physical therapy accessible to everyone, anytime, anywhere.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Who We Are:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "At  Sparkling self-care  , we believe in the transformative power of targeted exercises, expert guidance, and the convenience of technology. Whether you're recovering from an injury, looking to enhance your athletic performance, or seeking to improve your overall well-being, we are here to support you every step of the way.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Key Features:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "- Customized Exercise Programs:Tailored to your specific needs and goals, our programs are designed by experienced physical therapists.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "- Progress Tracking: Monitor your achievements, track improvements, and celebrate milestones on your path to recovery.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "- Expert Guidance: Access a wealth of educational resources, exercise demonstrations, and virtual consultations with certified physical therapists.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Why Choose Sparkling self-care",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "- Evidence-Based Approach: Our programs are rooted in evidence-based practices, ensuring you receive the highest quality of care.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "- Convenience: With  Sparkling self-care,   physical therapy fits seamlessly into your lifestyle. Complete your exercises at home, at the gym, or on the go.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "- Privacy and Security: Your health and personal data are treated with the utmost confidentiality and secured by industry-leading measures.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Join Us on Your Path to Wellness:",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Embark on your journey to better health with  Sparkling self-care",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "For inquiries or support, contact us at",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "-23951a050h@iare.ac.in",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "-23951a051d@iare.ac.in",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "-23951a0515@iare.ac.in",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ));
  }
}
