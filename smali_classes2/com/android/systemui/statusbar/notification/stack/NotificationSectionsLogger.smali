.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;
.super Ljava/lang/Object;
.source "NotificationSectionsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationSectionsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationSectionsLogger.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,98:1\n114#2,6:99\n114#2,6:105\n114#2,6:111\n114#2,6:117\n114#2,6:123\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationSectionsLogger.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger\n*L\n34#1,6:99\n49#1,6:105\n70#1,6:111\n74#1,6:117\n88#1,6:123\n*E\n"
.end annotation


# instance fields
.field private final logBuffer:Lcom/android/systemui/log/LogBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 1
    .param p1    # Lcom/android/systemui/log/LogBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "logBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method private final logPosition(ILjava/lang/String;)V
    .locals 3

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 90
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 95
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$4;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 92
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 93
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method private final logPosition(ILjava/lang/String;Z)V
    .locals 3

    if-eqz p3, :cond_0

    const-string p3, " (HUN)"

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 74
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 76
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 82
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logPosition$2;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NotifSections"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 78
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 79
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final logAlerting(IZ)V
    .locals 1

    const-string v0, "Alerting"

    .line 64
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logAlertingHeader(I)V
    .locals 1

    const-string v0, "ALERTING HEADER"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logConversation(IZ)V
    .locals 1

    const-string v0, "Conversation"

    .line 62
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logConversationsHeader(I)V
    .locals 1

    const-string v0, "CONVERSATIONS HEADER"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logHeadsUp(IZ)V
    .locals 1

    const-string v0, "Heads Up"

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logIncomingHeader(I)V
    .locals 1

    const-string v0, "INCOMING HEADER"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logMediaControls(I)V
    .locals 1

    const-string v0, "MEDIA CONTROLS"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logOther(ILjava/lang/Class;)V
    .locals 3
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 51
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 56
    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logOther$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logOther$2;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 53
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 54
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logSemPriorityHeader(I)V
    .locals 1

    const-string v0, "SEM HEADER"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logSilent(IZ)V
    .locals 1

    const-string v0, "Silent"

    .line 66
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;Z)V

    return-void
.end method

.method public final logSilentHeader(I)V
    .locals 1

    const-string v0, "SILENT HEADER"

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logPosition(ILjava/lang/String;)V

    return-void
.end method

.method public final logStartSectionUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 36
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 38
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStartSectionUpdate$2;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStartSectionUpdate$2;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStr(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStr$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger$logStr$2;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NotifSections"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 70
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
