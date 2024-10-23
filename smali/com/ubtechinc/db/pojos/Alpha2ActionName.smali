.class public Lcom/ubtechinc/db/pojos/Alpha2ActionName;
.super Ljava/lang/Object;
.source "Alpha2ActionName.java"


# static fields
.field public static final SQL_TABLE:Ljava/lang/String; = "CREATE TABLE actionName (_id INTEGER PRIMARY KEY,action_id TEXT,action_type TEXT,action_cn_name TEXT,action_en_name TEXT);"


# instance fields
.field public action_cn_name:Ljava/lang/String;

.field public action_en_name:Ljava/lang/String;

.field public action_id:Ljava/lang/String;

.field public action_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
