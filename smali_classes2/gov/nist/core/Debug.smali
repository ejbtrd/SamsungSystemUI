.class public Lgov/nist/core/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static debug:Z = false

.field public static parserDebug:Z = false

.field static stackLogger:Lgov/nist/core/StackLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 57
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0, p0, p1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 2

    .line 51
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_1

    const-string v1, "Stack Trace"

    .line 52
    invoke-interface {v0, v1, p0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 2

    .line 47
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_1

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
