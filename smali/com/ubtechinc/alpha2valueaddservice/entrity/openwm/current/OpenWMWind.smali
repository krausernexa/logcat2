.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;
.super Ljava/lang/Object;
.source "OpenWMWind.java"


# instance fields
.field private deg:F

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeg()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;->deg:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;->speed:F

    return v0
.end method

.method public setDeg(F)V
    .locals 0
    .param p1, "deg"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;->deg:F

    .line 19
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;->speed:F

    .line 13
    return-void
.end method
