.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;
.super Ljava/lang/Object;
.source "OpenWMCity.java"


# instance fields
.field private coord:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

.field private country:Ljava/lang/String;

.field private id:J

.field private name:Ljava/lang/String;

.field private population:I

.field private sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoord()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->coord:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPopulation()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->population:I

    return v0
.end method

.method public getSys()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;

    return-object v0
.end method

.method public setCoord(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;)V
    .locals 0
    .param p1, "coord"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->coord:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;

    .line 25
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->country:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->id:J

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPopulation(I)V
    .locals 0
    .param p1, "population"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->population:I

    .line 49
    return-void
.end method

.method public setSys(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;)V
    .locals 0
    .param p1, "sys"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMCity;->sys:Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Sys;

    .line 55
    return-void
.end method
