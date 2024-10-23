.class public final Lai/api/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static app_name:I

.field public static default_aidialog_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const/high16 v0, 0x7f070000

    sput v0, Lai/api/R$string;->app_name:I

    .line 142
    const v0, 0x7f070001

    sput v0, Lai/api/R$string;->default_aidialog_title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
