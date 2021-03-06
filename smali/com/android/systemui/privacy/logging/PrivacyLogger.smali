.class public final Lcom/android/systemui/privacy/logging/PrivacyLogger;
.super Ljava/lang/Object;
.source "PrivacyLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyLogger.kt\ncom/android/systemui/privacy/logging/PrivacyLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,151:1\n149#1:152\n150#1:159\n149#1:160\n150#1:167\n149#1:168\n150#1:175\n149#1:176\n150#1:183\n149#1:184\n150#1:191\n149#1:192\n150#1:199\n149#1:200\n150#1:207\n149#1:208\n150#1:215\n149#1:216\n150#1:223\n149#1:224\n150#1:231\n149#1:232\n150#1:239\n149#1:240\n150#1:247\n114#2,6:153\n114#2,6:161\n114#2,6:169\n114#2,6:177\n114#2,6:185\n114#2,6:193\n114#2,6:201\n114#2,6:209\n114#2,6:217\n114#2,6:225\n114#2,6:233\n114#2,6:241\n114#2,6:248\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyLogger.kt\ncom/android/systemui/privacy/logging/PrivacyLogger\n*L\n37#1:152\n37#1:159\n48#1:160\n48#1:167\n56#1:168\n56#1:175\n64#1:176\n64#1:183\n74#1:184\n74#1:191\n82#1:192\n82#1:199\n94#1:200\n94#1:207\n104#1:208\n104#1:215\n112#1:216\n112#1:223\n120#1:224\n120#1:231\n126#1:232\n126#1:239\n132#1:240\n132#1:247\n37#1,6:153\n48#1,6:161\n56#1,6:169\n64#1,6:177\n74#1,6:185\n82#1,6:193\n94#1,6:201\n104#1,6:209\n112#1,6:217\n120#1,6:225\n126#1,6:233\n132#1,6:241\n149#1,6:248\n*E\n"
.end annotation


# instance fields
.field private final buffer:Lcom/android/systemui/log/LogBuffer;
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

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method

.method public static final synthetic access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-object p0
.end method

.method private final listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 141
    sget-object v6, Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$listToString$1;

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final logChipVisible(Z)V
    .locals 3

    .line 82
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 84
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logChipVisible$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 83
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logCurrentProfilesChanged(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "profiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 76
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logCurrentProfilesChanged$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPrivacyDialogDismissed()V
    .locals 3

    .line 126
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyDialogDismissed$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPrivacyItemsToHold(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 58
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsToHold$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsToHold$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PrivacyLog"

    .line 115
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logPrivacyItemsUpdateScheduled(J)V
    .locals 3

    .line 64
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 68
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsUpdateScheduled$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logPrivacyItemsUpdateScheduled$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 66
    invoke-static {}, Lcom/android/systemui/privacy/logging/PrivacyLoggerKt;->access$getDATE_FORMAT$p()Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logRetrievedPrivacyItemsList(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 50
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logRetrievedPrivacyItemsList$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logRetrievedPrivacyItemsList$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PrivacyLog"

    .line 115
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logShowDialogContents(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 114
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logShowDialogContents$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStartSettingsActivityFromDialog(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 135
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStartSettingsActivityFromDialog$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 133
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logStatusBarIconsVisible(ZZZ)V
    .locals 3

    .line 94
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 98
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logStatusBarIconsVisible$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 95
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 96
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 97
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUnfilteredPermGroupUsage(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermGroupUsage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 106
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUnfilteredPermGroupUsage$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method

.method public final logUpdatedItemFromAppOps(IILjava/lang/String;Z)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 42
    sget-object v1, Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;->INSTANCE:Lcom/android/systemui/privacy/logging/PrivacyLogger$logUpdatedItemFromAppOps$2;

    .line 149
    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->access$getBuffer$p(Lcom/android/systemui/privacy/logging/PrivacyLogger;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PrivacyLog"

    .line 115
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    .line 38
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 39
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 40
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 41
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
