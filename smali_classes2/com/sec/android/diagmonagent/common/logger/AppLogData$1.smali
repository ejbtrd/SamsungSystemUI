.class Lcom/sec/android/diagmonagent/common/logger/AppLogData$1;
.super Ljava/util/logging/Formatter;
.source "AppLogData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/diagmonagent/common/logger/AppLogData;->initFileLogging(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/diagmonagent/common/logger/AppLogData;


# direct methods
.method constructor <init>(Lcom/sec/android/diagmonagent/common/logger/AppLogData;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sec/android/diagmonagent/common/logger/AppLogData$1;->this$0:Lcom/sec/android/diagmonagent/common/logger/AppLogData;

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 0

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
