.class public Lcom/ubtechinc/db/pojos/Alpha2Photo;
.super Ljava/lang/Object;
.source "Alpha2Photo.java"


# static fields
.field public static final SQL_TABLE:Ljava/lang/String; = "CREATE TABLE photoUrl (_id INTEGER PRIMARY KEY,filePath TEXT,url TEXT);"


# instance fields
.field public filePath:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
