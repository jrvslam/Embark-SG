import 'package:flutter/cupertino.dart';

class Results {
  String? nationality;
  String? related;
  String? purpose;
  String? duration;
  String? income;
  String? pr;

  String? visa;
  String? covid;
  String? sc;

  Results({this.nationality, this.related, this.purpose,
    this.duration, this.income, this.pr, this.visa, this.covid, this.sc});

  static Results parseRes(List<int> res) {
    String nat, pur, dur;
    String pass, cov, app;
    nat = "a foreigner";

    String? rel, inc;
    if (res[1] == 1) {
      rel = "a parent of a Singaporean Citizen/ Permanent resident";
    } else if (res[1] == 2) {
      rel = "a child of a Singaporean Citizen/ Permanent resident";
    } else if (res[1] == 3) {
      rel = "a spouse of a Singaporean Citizen/ Permanent resident";
    }

    //qn2
    if (res[1] == 4) {
      int _qn2 = res[2];
      switch (_qn2) {
        case 1:
          pur = "here primarily for leisure";
          pass = "please check if you require a visa";
          break;
        case 2:
          pur = "here primarily for work";
          pass = "Employment Pass";
          break;
        case 3:
          pur = "here primarily for study";
          pass = "Student Pass";
          break;
        case 4:
          pur = "here primarily for accompaniment";
          pass = "Long Term Visa Pass";
          break;
        default:
          pur = "error";
          pass = "error";
          break;
      }
    } else {
      int _qn2 = res[2];
      switch (_qn2) {
        case 1:
          pur = "here primarily for leisure";
          pass = "please check if you require a visa";
          break;
        case 2:
          pur = "here primarily for work";
          pass = "Employment Pass";
          break;
        case 3:
          pur = "here primarily for study";
          pass = "Student Pass";
          break;
        case 4:
          pur = "here primarily for family";
          pass = "Long Term Visa Pass";
          break;
        case 5:
          pur = "here primarily for accompaniment";
          pass = "Long Term Visa Pass";
          break;
        default:
          pur = "error";
          pass = "error";
          break;
      }
    }

    //qn3
    int _qn3 = res[3];
    switch (_qn3) {
      case 1:
        dur = "less than 2 months";
        break;
      case 2:
        dur = "less than 2 years";
        break;
      case 3:
        dur = "more than 2 years";
        break;
      default:
        dur = "error";
        break;
    }

    //qn4
    int _qn4 = res[4];
    switch (_qn4) {
      case 0:
        inc = "";
        break;
      case 1:
        inc = "less than SGD2,500 per month";
        break;
      case 2:
        inc = "less than SGD4,500 per month";
        break;
      case 3:
        inc = "more than SGD4,500 per month";
        break;
      case 4:
        inc = "intention to start a business";
        break;
      default:
        inc = "error";
        break;
    }

    cov = "COVID-19 Safety Measures upon arrival";

    String isStay;
    if (res[5] == 1) {
      isStay = "intending to get Singapore Citizenship/ Permanant Residency";
      app = "SC/PR Application";
    } else {
      isStay = "not intending to get Singapore Citizenship/ Permanant Residency";
      app = "Get ready for your flight!";
    }

    return new Results(nationality: nat, related: rel, purpose: pur,
        duration: dur, income: inc, pr: isStay, visa: pass, covid: cov, sc: app);
  }

}
