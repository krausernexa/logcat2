.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;
.super Ljava/lang/Object;
.source "OpenWMRain.java"


# instance fields
.field private threeHour:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThreeHour()F
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;->threeHour:F

    return v0
.end method

.method public setThreeHour(F)V
    .locals 0
    .param p1, "threeHour"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMRain;->threeHour:F

    .line 13
    return-void
.end method
