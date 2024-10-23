.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;
.super Ljava/lang/Object;
.source "OpenWMMain.java"


# instance fields
.field private humidity:I

.field private pressure:I

.field private temp:F

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
.method public getHumidity()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->humidity:I

    return v0
.end method

.method public getPressure()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->pressure:I

    return v0
.end method

.method public getTemp()F
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->temp:F

    return v0
.end method

.method public getTemp_max()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->temp_max:F

    return v0
.end method

.method public getTemp_min()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->temp_min:F

    return v0
.end method

.method public setHumidity(I)V
    .locals 0
    .param p1, "humidity"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->humidity:I

    .line 28
    return-void
.end method

.method public setPressure(I)V
    .locals 0
    .param p1, "pressure"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->pressure:I

    .line 22
    return-void
.end method

.method public setTemp(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->temp:F

    .line 16
    return-void
.end method

.method public setTemp_max(F)V
    .locals 0
    .param p1, "temp_max"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->temp_max:F

    .line 40
    return-void
.end method

.method public setTemp_min(F)V
    .locals 0
    .param p1, "temp_min"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->temp_min:F

    .line 34
    return-void
.end method
