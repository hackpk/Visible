bool back_To = false;
List search_images = [
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Wytlw5AmN2HoCJ_kLGF1EgHaF7%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.v8Td_kQ4aHo9VI9YxkghkgHaHJ%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0PG4ybJw8GbGhduStjZ9rAHaEo%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.5HhzkMwACP_xdt5_YzMERwHaEK%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.R34GHPR2f6EKzumfhji5oAHaE7%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.EAzMf4436BdR-LVn7u_TOAHaJ4%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.N1yOFt6kphyq1VmN-HmHSwHaFj%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.aM_vdmiovaMTrv4wX2xSQgHaEo%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.NH_RyPg5nhAytr8XfOAdHQHaEK%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.qs82A2HBEQVNsZkGk_HfSgHaE8%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.k_Fsj_8Xw_EDf2yi3ejNWQHaFT%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.k_Fsj_8Xw_EDf2yi3ejNWQHaFT%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.k_Fsj_8Xw_EDf2yi3ejNWQHaFT%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.k_Fsj_8Xw_EDf2yi3ejNWQHaFT%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.k_Fsj_8Xw_EDf2yi3ejNWQHaFT%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.k_Fsj_8Xw_EDf2yi3ejNWQHaFT%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.5HhzkMwACP_xdt5_YzMERwHaEK%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.5HhzkMwACP_xdt5_YzMERwHaEK%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.5HhzkMwACP_xdt5_YzMERwHaEK%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.5HhzkMwACP_xdt5_YzMERwHaEK%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Wytlw5AmN2HoCJ_kLGF1EgHaF7%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.v8Td_kQ4aHo9VI9YxkghkgHaHJ%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0PG4ybJw8GbGhduStjZ9rAHaEo%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.5HhzkMwACP_xdt5_YzMERwHaEK%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.R34GHPR2f6EKzumfhji5oAHaE7%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.EAzMf4436BdR-LVn7u_TOAHaJ4%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.N1yOFt6kphyq1VmN-HmHSwHaFj%26pid%3DApi&f=1",
  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.aM_vdmiovaMTrv4wX2xSQgHaEo%26pid%3DApi&f=1",
];

List posts = [
  {
    "id": 1,
    "name": "laurenjauregui98",
    "profileImg":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.AvK2WYkH9pac7Z0EFo7X9gHaJP%26pid%3DApi&f=1",
    "postImg":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.RUnYjt4F3sev4jyC1-EaVAHaK6%26pid%3DApi&f=1",
    "caption": "Beloved me changing the world",
    "isLoved": true,
    "likes": "35458",
    "commentCount": "10000",
    "likedBy": "harry_styles",
    "timeAgo": "1 day Ago",
  },
  {
    "id": 2,
    "name": "harry_styles",
    "profileImg":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.ky71n67YNl6SLBSGlhELFAHaE8%26pid%3DApi&f=1",
    "postImg":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.EknFBP_3s8zdEnSp-uDgbgHaJp%26pid%3DApi&f=1",
    "caption": "treat people with kindness",
    "isLoved": true,
    "likes": "35458",
    "commentCount": "1200",
    "likedBy": "nautella_articles",
    "timeAgo": "2 day Ago",
  },
  {
    "id": 3,
    "name": "billy_illish",
    "profileImg":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.3NL6zseomjFFmWUv47uo-wHaLH%26pid%3DApi&f=1",
    "postImg":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.3NL6zseomjFFmWUv47uo-wHaLH%26pid%3DApi&f=1",
    "caption": "Therefor I am",
    "isLoved": true,
    "likes": "35458",
    "commentCount": "10",
    "likedBy": "dua_lipa",
    "timeAgo": "2 day Ago",
  }
];

String profile =
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.6-D8avSS-BshCdysPCIXyAHaJR%26pid%3DApi&f=1";
List stories = [
  {
    "id": 1,
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.eLXqZSQogWkIatAKPpjAEQHaEo%26pid%3DApi&f=1s",
    "name": "Pikachu"
  },
  {
    "id": 2,
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.05VzM-3T0OoJn7-Emw9mpgHaD5%26pid%3DApi&f=1",
    "name": "Riyayat"
  },
  {
    "id": 3,
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.yRIn6CNx-idP_unzLPV45wHaHa%26pid%3DApi&f=1",
    "name": "Harry Styles"
  },
  {
    "id": 4,
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia1.popsugar-assets.com%2Ffiles%2Fthumbor%2FhBHVpwl6fip3GtUxIysK9dcIFnU%2Ffit-in%2F1024x1024%2Ffilters%3Aformat_auto-!!-%3Astrip_icc-!!-%2F2019%2F07%2F10%2F649%2Fn%2F44701584%2F995b0c45ce207c21_GettyImages-501076580%2Fi%2FSexy-Pictures-Lauren-Jauregui.jpg&f=1&nofb=1",
    "name": "Lauren Jauregui"
  },
  {
    "id": 5,
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.PypxFTYw5fptKisi1t6UkQHaLH%26pid%3DApi&f=1",
    "name": "Camilla Mendes"
  },
  {
    "id": 6,
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.gUUA7zN_ENQao7loZPuzNAHaLJ%26pid%3DApi&f=1",
    "name": "Camila Cabello"
  },
];
