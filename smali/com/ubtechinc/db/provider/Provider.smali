.class public Lcom/ubtechinc/db/provider/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;,
        Lcom/ubtechinc/db/provider/Provider$PhotoUrlColumns;,
        Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;,
        Lcom/ubtechinc/db/provider/Provider$StateColums;,
        Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.jacp.demo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.jacp.demo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
