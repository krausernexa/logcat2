.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;
.super Ljava/lang/Object;
.source "OpenWMForcastMain.java"


# instance fields
.field private grnd_level:F

.field private humidity:I

.field private pressure:F

.field private sea_level:F

.field private temp:F

.field private temp_kf:F

.field private temp_max:F

.field private temp_min:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGrnd_level()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->grnd_level:F

    return v0
.end method

.method public getHumidity()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->humidity:I

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->pressure:F

    return v0
.end method

.method public getSea_level()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->sea_level:F

    return v0
.end method

.method public getTemp()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp:F

    return v0
.end method

.method public getTemp_kf()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp_kf:F

    return v0
.end method

.method public getTemp_max()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp_max:F

    return v0
.end method

.method public getTemp_min()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp_min:F

    return v0
.end method

.method public setGrnd_level(F)V
    .locals 0
    .param p1, "grnd_level"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->grnd_level:F

    .line 49
    return-void
.end method

.method public setHumidity(I)V
    .locals 0
    .param p1, "humidity"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->humidity:I

    .line 55
    return-void
.end method

.method public setPressure(F)V
    .locals 0
    .param p1, "pressure"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->pressure:F

    .line 37
    return-void
.end method

.method public setSea_level(F)V
    .locals 0
    .param p1, "sea_level"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->sea_level:F

    .line 43
    return-void
.end method

.method public setTemp(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp:F

    .line 19
    return-void
.end method

.method public setTemp_kf(F)V
    .locals 0
    .param p1, "temp_kf"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp_kf:F

    .line 61
    return-void
.end method

.method public setTemp_max(F)V
    .locals 0
    .param p1, "temp_max"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp_max:F

    .line 31
    return-void
.end method

.method public setTemp_min(F)V
    .locals 0
    .param p1, "temp_min"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->temp_min:F

    .line 25
    return-void
.end method
