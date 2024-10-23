.class public final Lai/api/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static aidialog_background:I

.field public static icon_orange_color:I

.field public static main_bg_color:I

.field public static mic_button_halo:I

.field public static mic_colors:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/high16 v0, 0x7f050000

    sput v0, Lai/api/R$color;->aidialog_background:I

    .line 111
    const v0, 0x7f050001

    sput v0, Lai/api/R$color;->icon_orange_color:I

    .line 112
    const v0, 0x7f050002

    sput v0, Lai/api/R$color;->main_bg_color:I

    .line 113
    const v0, 0x7f050003

    sput v0, Lai/api/R$color;->mic_button_halo:I

    .line 114
    const v0, 0x7f050004

    sput v0, Lai/api/R$color;->mic_colors:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
