.class public final Lai/api/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static ApiAi:I

.field public static ApiAi_FullScreenDialog:I

.field public static ApiAi_Microphone:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/high16 v0, 0x7f080000

    sput v0, Lai/api/R$style;->ApiAi:I

    .line 146
    const v0, 0x7f080001

    sput v0, Lai/api/R$style;->ApiAi_FullScreenDialog:I

    .line 147
    const v0, 0x7f080002

    sput v0, Lai/api/R$style;->ApiAi_Microphone:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
