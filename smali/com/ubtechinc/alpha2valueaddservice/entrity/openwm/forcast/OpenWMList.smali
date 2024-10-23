.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;
.super Ljava/lang/Object;
.source "OpenWMList.java"


# instance fields
.field private clouds:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

.field private dt:J

.field private dt_txt:Ljava/lang/String;

.field private main:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;

.field private rain:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

.field private sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;

.field private weather:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

.field private wind:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClouds()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->clouds:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    return-object v0
.end method

.method public getDt()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->dt:J

    return-wide v0
.end method

.method public getDt_txt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->dt_txt:Ljava/lang/String;

    return-object v0
.end method

.method public getMain()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->main:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;

    return-object v0
.end method

.method public getRain()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->rain:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

    return-object v0
.end method

.method public getSys()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;

    return-object v0
.end method

.method public getWeather()[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->weather:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    return-object v0
.end method

.method public getWind()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->wind:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    return-object v0
.end method

.method public setClouds(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;)V
    .locals 0
    .param p1, "clouds"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->clouds:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    .line 49
    return-void
.end method

.method public setDt(J)V
    .locals 1
    .param p1, "dt"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->dt:J

    .line 25
    return-void
.end method

.method public setDt_txt(Ljava/lang/String;)V
    .locals 0
    .param p1, "dt_txt"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->dt_txt:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMain(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;)V
    .locals 0
    .param p1, "main"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->main:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;

    .line 31
    return-void
.end method

.method public setRain(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;)V
    .locals 0
    .param p1, "rain"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->rain:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;

    .line 55
    return-void
.end method

.method public setSys(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;)V
    .locals 0
    .param p1, "sys"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMWeatherSys;

    .line 61
    return-void
.end method

.method public setWeather([Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;)V
    .locals 0
    .param p1, "weather"    # [Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->weather:[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    .line 37
    return-void
.end method

.method public setWind(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;)V
    .locals 0
    .param p1, "wind"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->wind:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    .line 43
    return-void
.end method
