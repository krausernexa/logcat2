.class public final Lai/api/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static cube:I

.field public static mic_control:I

.field public static microphone_control:I

.field public static speaker:I

.field public static speaker_silent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/high16 v0, 0x7f020000

    sput v0, Lai/api/R$drawable;->cube:I

    .line 123
    const v0, 0x7f020001

    sput v0, Lai/api/R$drawable;->mic_control:I

    .line 124
    const v0, 0x7f020002

    sput v0, Lai/api/R$drawable;->microphone_control:I

    .line 125
    const v0, 0x7f020003

    sput v0, Lai/api/R$drawable;->speaker:I

    .line 126
    const v0, 0x7f020004

    sput v0, Lai/api/R$drawable;->speaker_silent:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
