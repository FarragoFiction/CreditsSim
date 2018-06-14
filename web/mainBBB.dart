import 'dart:async';
import "dart:html";
import "package:CreditsLib/CharacterLib.dart";
import 'package:CreditsLib/src/CharacterObject.dart';
import 'package:RenderingLib/RendereringLib.dart';
Element content = querySelector("#content");

Future<Null> main() async{
  heartfeltThanks();
  await Loader.preloadManifest();
  List<CreditsObject> credits = await BBBCreator.slurpAllCredits();
  CreditsObject.drawCredits(credits, content);
}

void heartfeltThanks() {
  ImageElement me = new ImageElement(src: "images/jadedResearcher.png");
  me.style.float = "left";
  content.append(me);
  DivElement thanks = new DivElement();
  thanks.style.verticalAlign = "middle";
  thanks.style.height = "${me.height}px";
  thanks.setInnerHtml("One May 13th, 2018, the Big Bad Battle contest began to birth Big Bads to Battle it out for the right to be SBURBSim canon. Their creators are listed, here.");
  content.append(thanks);
}