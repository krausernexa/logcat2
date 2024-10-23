.class public Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
.super Ljava/lang/Object;
.source "Alpha2SpeechPlugin.java"


# static fields
.field public static SQL:Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "CREATE TABLE speech (_id INTEGER PRIMARY KEY,name TEXT,action TEXT);"

    sput-object v0, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->SQL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
