import 'package:flutter/material.dart';

class UICloneTrackerScreen extends StatefulWidget {
  const UICloneTrackerScreen({super.key});

  @override
  UICloneTrackerScreenState createState() => UICloneTrackerScreenState();
}

class UICloneTrackerScreenState extends State<UICloneTrackerScreen> {
  final List<String> cloneIdeas = [
    "WhatsApp – Chat list",
    "WhatsApp – Single chat",
    "WhatsApp – Status screen",
    "Telegram – Channel page",
    "Messenger – Chat bubbles with reactions",
    "Signal – Group chat",
    "Discord – Server channel list",
    "Slack – Workspace messages",
    "iMessage – Message thread",
    "WeChat – Moments feed",
    "Instagram – Profile",
    "Instagram – Feed post",
    "Instagram – Explore grid",
    "Facebook – News feed",
    "Facebook – Profile page",
    "TikTok – Video feed",
    "TikTok – Comments section",
    "Twitter – Tweet with comments",
    "LinkedIn – Feed post",
    "Threads – Home timeline",
    "Snapchat – Camera UI",
    "YouTube – Video player screen",
    "YouTube – Comments section",
    "Pinterest – Board layout",
    "Google Photos – Gallery view",
    "VSCO – Edit screen",
    "Instagram Reels – Fullscreen UI",
    "CapCut – Edit timeline",
    "Apple Photos – Memories layout",
    "Vimeo – Video player",
    "Amazon – Product page",
    "Amazon – Home screen",
    "Flipkart – Offers carousel",
    "eBay – Bidding screen",
    "Etsy – Storefront page",
    "Myntra – Product grid",
    "Meesho – Product detail",
    "AliExpress – Product + reviews",
    "Shein – Checkout screen",
    "Swiggy Instamart – Cart UI",
    "Zomato – Restaurant listing",
    "Swiggy – Restaurant detail",
    "Uber Eats – Cart view",
    "McDonald’s – Menu grid",
    "Domino’s – Order tracker",
    "Foodpanda – Home screen",
    "KFC – Offer carousel",
    "Starbucks – Reward screen",
    "Dunzo – Essentials UI",
    "Blinkit – Product grid",
    "Uber – Ride request screen",
    "Ola – Trip booking page",
    "Google Maps – Navigation UI",
    "Airbnb – Property listing",
    "Airbnb – Booking summary",
    "MakeMyTrip – Flight results",
    "Booking.com – Hotel list",
    "Goibibo – Train status",
    "Rapido – Bike booking",
    "BlaBlaCar – Ride match screen",
    "Google Pay – Transaction history",
    "PhonePe – Recharge screen",
    "Paytm – Wallet dashboard",
    "BHIM UPI – Send money UI",
    "Venmo – Payment feed",
    "Cash App – Stock buy UI",
    "Cred – Credit score page",
    "Zerodha – Stock detail chart",
    "Robinhood – Portfolio view",
    "SBI Yono – Account summary",
    "Google Calendar – Day view",
    "Notion – Note page",
    "Evernote – Notes list",
    "Todoist – Task list",
    "Google Keep – Color-coded notes",
    "Trello – Kanban board",
    "Slack – Channel list",
    "Microsoft Teams – Meeting UI",
    "Zoom – Join meeting",
    "Dropbox – File browser",
    "Fitbit – Dashboard",
    "Nike Training Club – Workout summary",
    "MyFitnessPal – Calorie tracker",
    "Samsung Health – Steps screen",
    "Apple Health – Summary",
    "Headspace – Meditation player",
    "Calm – Sleep stories UI",
    "Strava – Activity map",
    "Google Fit – Progress rings",
    "Gymshark – Workout tracker",
    "CoWIN – Vaccine appointment",
    "Aarogya Setu – Risk status",
    "Google News – Headlines layout",
    "Times of India – Article view",
    "Inshorts – Swipeable news cards",
    "Reddit – Post + comments",
    "Quora – Answer view",
    "Stack Overflow – Q&A thread",
    "Medium – Article layout",
    "Wikipedia – Article viewer",
    "Login Screen (Generic)",
    "Onboarding Carousel",
    "Splash Screen",
    "Dark Mode Toggle",
    "Tab Navigation Layout",
    "Bottom Navigation Bar",
    "Custom Drawer",
    "Rating Modal",
    "Empty State UI",
    "Error Screen (404 style)",
  ];

  List<bool> checked = [];

  @override
  void initState() {
    super.initState();
    checked = List.generate(cloneIdeas.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter UI Clone Tracker")),
      body: ListView.builder(
        itemCount: cloneIdeas.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(cloneIdeas[index]),
            value: checked[index],
            onChanged: (value) {
              setState(() {
                checked[index] = value!;
              });
            },
          );
        },
      ),
    );
  }
}
