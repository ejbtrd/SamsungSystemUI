.class public Lcom/android/internal/protolog/common/ProtoLog;
.super Ljava/lang/Object;
.source "ProtoLog.java"


# static fields
.field public static REQUIRE_PROTOLOGTOOL:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static varargs v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 66
    sget-boolean p0, Lcom/android/internal/protolog/common/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-nez p0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ProtoLog calls MUST be processed with ProtoLogTool"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
