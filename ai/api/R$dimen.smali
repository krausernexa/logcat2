.class public final Lai/api/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static mic_button_halo_radius_max:I

.field public static mic_button_halo_radius_min:I

.field public static mic_button_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/high16 v0, 0x7f060000

    sput v0, Lai/api/R$dimen;->mic_button_halo_radius_max:I

    .line 118
    const v0, 0x7f060001

    sput v0, Lai/api/R$dimen;->mic_button_halo_radius_min:I

    .line 119
    const v0, 0x7f060002

    sput v0, Lai/api/R$dimen;->mic_button_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
