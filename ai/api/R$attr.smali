.class public final Lai/api/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static centerColor:I

.field public static circleCenterX:I

.field public static circleCenterY:I

.field public static haloColor:I

.field public static mainColor:I

.field public static maxRadius:I

.field public static minRadius:I

.field public static state_initializing_tts:I

.field public static state_listening:I

.field public static state_speaking:I

.field public static state_waiting:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f010005

    sput v0, Lai/api/R$attr;->centerColor:I

    .line 30
    const v0, 0x7f010003

    sput v0, Lai/api/R$attr;->circleCenterX:I

    .line 40
    const v0, 0x7f010004

    sput v0, Lai/api/R$attr;->circleCenterY:I

    .line 49
    const v0, 0x7f010006

    sput v0, Lai/api/R$attr;->haloColor:I

    .line 55
    const/high16 v0, 0x7f010000

    sput v0, Lai/api/R$attr;->mainColor:I

    .line 65
    const v0, 0x7f010002

    sput v0, Lai/api/R$attr;->maxRadius:I

    .line 75
    const v0, 0x7f010001

    sput v0, Lai/api/R$attr;->minRadius:I

    .line 83
    const v0, 0x7f01000a

    sput v0, Lai/api/R$attr;->state_initializing_tts:I

    .line 91
    const v0, 0x7f010007

    sput v0, Lai/api/R$attr;->state_listening:I

    .line 99
    const v0, 0x7f010009

    sput v0, Lai/api/R$attr;->state_speaking:I

    .line 107
    const v0, 0x7f010008

    sput v0, Lai/api/R$attr;->state_waiting:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
