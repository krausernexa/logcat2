.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;
.super Ljava/lang/Object;
.source "OpenWMCurrentResp.java"


# instance fields
.field private base:Ljava/lang/String;

.field private clouds:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

.field private cod:I

.field private coord:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

.field private dt:J

.field private id:J

.field private main:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;

.field private name:Ljava/lang/String;

.field private rain:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

.field private sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMSys;

.field private visibility:I

.field private weather:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

.field private wind:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->base:Ljava/lang/String;

    return-object v0
.end method

.method public getClouds()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->clouds:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    return-object v0
.end method

.method public getCod()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->cod:I

    return v0
.end method

.method public getCoord()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->coord:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

    return-object v0
.end method

.method public getDt()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->dt:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->id:J

    return-wide v0
.end method

.method public getMain()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->main:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRain()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->rain:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

    return-object v0
.end method

.method public getSys()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMSys;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMSys;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->visibility:I

    return v0
.end method

.method public getWeather()[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->weather:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    return-object v0
.end method

.method public getWind()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->wind:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    return-object v0
.end method

.method public setBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->base:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setClouds(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;)V
    .locals 0
    .param p1, "clouds"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->clouds:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    .line 54
    return-void
.end method

.method public setCod(I)V
    .locals 0
    .param p1, "cod"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->cod:I

    .line 90
    return-void
.end method

.method public setCoord(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;)V
    .locals 0
    .param p1, "coord"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->coord:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

    .line 24
    return-void
.end method

.method public setDt(J)V
    .locals 1
    .param p1, "dt"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->dt:J

    .line 66
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->id:J

    .line 78
    return-void
.end method

.method public setMain(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;)V
    .locals 0
    .param p1, "main"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->main:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;

    .line 42
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->name:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRain(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;)V
    .locals 0
    .param p1, "rain"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->rain:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

    .line 60
    return-void
.end method

.method public setSys(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMSys;)V
    .locals 0
    .param p1, "sys"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMSys;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMSys;

    .line 72
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->visibility:I

    .line 96
    return-void
.end method

.method public setWeather([Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;)V
    .locals 0
    .param p1, "weather"    # [Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->weather:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    .line 30
    return-void
.end method

.method public setWind(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;)V
    .locals 0
    .param p1, "wind"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->wind:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    .line 48
    return-void
.end method
