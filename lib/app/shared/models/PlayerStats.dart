class PlayerStats {
  String id;
  String name;
  String shortName;
  String photoUrl;
  String primaryPosition;
  List<String> positions;
  String age;
  String birthDate;
  String height;
  String weight;
  int overallRating;
  int potential;
  String value;
  String wage;
  String preferredFoot;
  int weakFoot;
  int skillMoves;
  int internationalReputation;
  String workRate;
  String bodyType;
  String realFace;
  String releaseClause;
  Teams teams;
  Attacking attacking;
  Skill skill;
  Movement movement;
  Power power;
  Mentality mentality;
  Defending defending;
  Goalkeeping goalkeeping;
  List<String> playerTraits;
  List<String> playerHashtags;
  Logos logos;

  PlayerStats(
      {this.id,
      this.name,
      this.shortName,
      this.photoUrl,
      this.primaryPosition,
      this.positions,
      this.age,
      this.birthDate,
      this.height,
      this.weight,
      this.overallRating,
      this.potential,
      this.value,
      this.wage,
      this.preferredFoot,
      this.weakFoot,
      this.skillMoves,
      this.internationalReputation,
      this.workRate,
      this.bodyType,
      this.realFace,
      this.releaseClause,
      this.teams,
      this.attacking,
      this.skill,
      this.movement,
      this.power,
      this.mentality,
      this.defending,
      this.goalkeeping,
      this.playerTraits,
      this.playerHashtags,
      this.logos});

  PlayerStats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortName = json['short_name'];
    photoUrl = json['photo_url'];
    primaryPosition = json['primary_position'];
    positions = json['positions'].cast<String>();
    age = json['age'];
    birthDate = json['birth_date'];
    height = json['height'];
    weight = json['weight'];
    overallRating = json['Overall Rating'];
    potential = json['Potential'];
    value = json['Value'];
    wage = json['Wage'];
    preferredFoot = json['Preferred Foot'];
    weakFoot = json['Weak Foot'];
    skillMoves = json['Skill Moves'];
    internationalReputation = json['International Reputation'];
    workRate = json['Work Rate'];
    bodyType = json['Body Type'];
    realFace = json['Real Face'];
    releaseClause = json['Release Clause'];
    teams = json['teams'] != null ? new Teams.fromJson(json['teams']) : null;
    attacking = json['attacking'] != null
        ? new Attacking.fromJson(json['attacking'])
        : null;
    skill = json['skill'] != null ? new Skill.fromJson(json['skill']) : null;
    movement = json['movement'] != null
        ? new Movement.fromJson(json['movement'])
        : null;
    power = json['power'] != null ? new Power.fromJson(json['power']) : null;
    mentality = json['mentality'] != null
        ? new Mentality.fromJson(json['mentality'])
        : null;
    defending = json['defending'] != null
        ? new Defending.fromJson(json['defending'])
        : null;
    goalkeeping = json['goalkeeping'] != null
        ? new Goalkeeping.fromJson(json['goalkeeping'])
        : null;
    playerTraits = json['player_traits'].cast<String>();
    playerHashtags = json['player_hashtags'].cast<String>();
    logos = json['logos'] != null ? new Logos.fromJson(json['logos']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['short_name'] = this.shortName;
    data['photo_url'] = this.photoUrl;
    data['primary_position'] = this.primaryPosition;
    data['positions'] = this.positions;
    data['age'] = this.age;
    data['birth_date'] = this.birthDate;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['Overall Rating'] = this.overallRating;
    data['Potential'] = this.potential;
    data['Value'] = this.value;
    data['Wage'] = this.wage;
    data['Preferred Foot'] = this.preferredFoot;
    data['Weak Foot'] = this.weakFoot;
    data['Skill Moves'] = this.skillMoves;
    data['International Reputation'] = this.internationalReputation;
    data['Work Rate'] = this.workRate;
    data['Body Type'] = this.bodyType;
    data['Real Face'] = this.realFace;
    data['Release Clause'] = this.releaseClause;
    if (this.teams != null) {
      data['teams'] = this.teams.toJson();
    }
    if (this.attacking != null) {
      data['attacking'] = this.attacking.toJson();
    }
    if (this.skill != null) {
      data['skill'] = this.skill.toJson();
    }
    if (this.movement != null) {
      data['movement'] = this.movement.toJson();
    }
    if (this.power != null) {
      data['power'] = this.power.toJson();
    }
    if (this.mentality != null) {
      data['mentality'] = this.mentality.toJson();
    }
    if (this.defending != null) {
      data['defending'] = this.defending.toJson();
    }
    if (this.goalkeeping != null) {
      data['goalkeeping'] = this.goalkeeping.toJson();
    }
    data['player_traits'] = this.playerTraits;
    data['player_hashtags'] = this.playerHashtags;
    if (this.logos != null) {
      data['logos'] = this.logos.toJson();
    }
    return data;
  }
}

class Teams {
  int fCBarcelona;
  int argentina;

  Teams({this.fCBarcelona, this.argentina});

  Teams.fromJson(Map<String, dynamic> json) {
    fCBarcelona = json['FC Barcelona'];
    argentina = json['Argentina'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FC Barcelona'] = this.fCBarcelona;
    data['Argentina'] = this.argentina;
    return data;
  }
}

class Attacking {
  int crossing;
  int finishing;
  int headingAccuracy;
  int shortPassing;
  int volleys;

  Attacking(
      {this.crossing,
      this.finishing,
      this.headingAccuracy,
      this.shortPassing,
      this.volleys});

  Attacking.fromJson(Map<String, dynamic> json) {
    crossing = json['Crossing'];
    finishing = json['Finishing'];
    headingAccuracy = json['HeadingAccuracy'];
    shortPassing = json['ShortPassing'];
    volleys = json['Volleys'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Crossing'] = this.crossing;
    data['Finishing'] = this.finishing;
    data['HeadingAccuracy'] = this.headingAccuracy;
    data['ShortPassing'] = this.shortPassing;
    data['Volleys'] = this.volleys;
    return data;
  }
}

class Skill {
  int dribbling;
  int curve;
  int fKAccuracy;
  int longPassing;
  int ballControl;

  Skill(
      {this.dribbling,
      this.curve,
      this.fKAccuracy,
      this.longPassing,
      this.ballControl});

  Skill.fromJson(Map<String, dynamic> json) {
    dribbling = json['Dribbling'];
    curve = json['Curve'];
    fKAccuracy = json['FKAccuracy'];
    longPassing = json['LongPassing'];
    ballControl = json['BallControl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Dribbling'] = this.dribbling;
    data['Curve'] = this.curve;
    data['FKAccuracy'] = this.fKAccuracy;
    data['LongPassing'] = this.longPassing;
    data['BallControl'] = this.ballControl;
    return data;
  }
}

class Movement {
  int acceleration;
  int sprintSpeed;
  int agility;
  int reactions;
  int balance;

  Movement(
      {this.acceleration,
      this.sprintSpeed,
      this.agility,
      this.reactions,
      this.balance});

  Movement.fromJson(Map<String, dynamic> json) {
    acceleration = json['Acceleration'];
    sprintSpeed = json['SprintSpeed'];
    agility = json['Agility'];
    reactions = json['Reactions'];
    balance = json['Balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Acceleration'] = this.acceleration;
    data['SprintSpeed'] = this.sprintSpeed;
    data['Agility'] = this.agility;
    data['Reactions'] = this.reactions;
    data['Balance'] = this.balance;
    return data;
  }
}

class Power {
  int shotPower;
  int jumping;
  int stamina;
  int strength;
  int longShots;

  Power(
      {this.shotPower,
      this.jumping,
      this.stamina,
      this.strength,
      this.longShots});

  Power.fromJson(Map<String, dynamic> json) {
    shotPower = json['ShotPower'];
    jumping = json['Jumping'];
    stamina = json['Stamina'];
    strength = json['Strength'];
    longShots = json['LongShots'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ShotPower'] = this.shotPower;
    data['Jumping'] = this.jumping;
    data['Stamina'] = this.stamina;
    data['Strength'] = this.strength;
    data['LongShots'] = this.longShots;
    return data;
  }
}

class Mentality {
  int aggression;
  int interceptions;
  int positioning;
  int vision;
  int penalties;
  int composure;

  Mentality(
      {this.aggression,
      this.interceptions,
      this.positioning,
      this.vision,
      this.penalties,
      this.composure});

  Mentality.fromJson(Map<String, dynamic> json) {
    aggression = json['Aggression'];
    interceptions = json['Interceptions'];
    positioning = json['Positioning'];
    vision = json['Vision'];
    penalties = json['Penalties'];
    composure = json['Composure'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Aggression'] = this.aggression;
    data['Interceptions'] = this.interceptions;
    data['Positioning'] = this.positioning;
    data['Vision'] = this.vision;
    data['Penalties'] = this.penalties;
    data['Composure'] = this.composure;
    return data;
  }
}

class Defending {
  int defensiveAwareness;
  int standingTackle;
  int slidingTackle;

  Defending({this.defensiveAwareness, this.standingTackle, this.slidingTackle});

  Defending.fromJson(Map<String, dynamic> json) {
    defensiveAwareness = json['DefensiveAwareness'];
    standingTackle = json['StandingTackle'];
    slidingTackle = json['SlidingTackle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DefensiveAwareness'] = this.defensiveAwareness;
    data['StandingTackle'] = this.standingTackle;
    data['SlidingTackle'] = this.slidingTackle;
    return data;
  }
}

class Goalkeeping {
  int gKDiving;
  int gKHandling;
  int gKKicking;
  int gKPositioning;
  int gKReflexes;

  Goalkeeping(
      {this.gKDiving,
      this.gKHandling,
      this.gKKicking,
      this.gKPositioning,
      this.gKReflexes});

  Goalkeeping.fromJson(Map<String, dynamic> json) {
    gKDiving = json['GKDiving'];
    gKHandling = json['GKHandling'];
    gKKicking = json['GKKicking'];
    gKPositioning = json['GKPositioning'];
    gKReflexes = json['GKReflexes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['GKDiving'] = this.gKDiving;
    data['GKHandling'] = this.gKHandling;
    data['GKKicking'] = this.gKKicking;
    data['GKPositioning'] = this.gKPositioning;
    data['GKReflexes'] = this.gKReflexes;
    return data;
  }
}

class Logos {
  Country country;
  Country club;
  Country nationalClub;

  Logos({this.country, this.club, this.nationalClub});

  Logos.fromJson(Map<String, dynamic> json) {
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    club = json['club'] != null ? new Country.fromJson(json['club']) : null;
    nationalClub = json['nationalClub'] != null
        ? new Country.fromJson(json['nationalClub'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.country != null) {
      data['country'] = this.country.toJson();
    }
    if (this.club != null) {
      data['club'] = this.club.toJson();
    }
    if (this.nationalClub != null) {
      data['nationalClub'] = this.nationalClub.toJson();
    }
    return data;
  }
}

class Country {
  String name;
  String url;

  Country({this.name, this.url});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
