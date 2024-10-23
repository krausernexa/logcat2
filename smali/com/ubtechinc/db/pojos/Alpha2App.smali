.class public Lcom/ubtechinc/db/pojos/Alpha2App;
.super Ljava/lang/Object;
.source "Alpha2App.java"


# static fields
.field public static final SQL_TABLE:Ljava/lang/String; = "CREATE TABLE app (_id INTEGER PRIMARY KEY,name TEXT,appid TEXT);"


# instance fields
.field public appid:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
