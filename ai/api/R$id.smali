.class public final Lai/api/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static micButton:I

.field public static micContainer:I

.field public static partialResultsTextView:I

.field public static titleTextView:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f090001

    sput v0, Lai/api/R$id;->micButton:I

    .line 130
    const/high16 v0, 0x7f090000

    sput v0, Lai/api/R$id;->micContainer:I

    .line 131
    const v0, 0x7f090003

    sput v0, Lai/api/R$id;->partialResultsTextView:I

    .line 132
    const v0, 0x7f090002

    sput v0, Lai/api/R$id;->titleTextView:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
