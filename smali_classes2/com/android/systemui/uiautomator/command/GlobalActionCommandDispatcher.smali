.class public final Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher;
.super Ljava/lang/Object;
.source "GlobalActionCommandDispatcher.kt"

# interfaces
.implements Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;,
        Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$WhenMappings;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p2, "method"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_monitor_result"

    const/4 v1, 0x1

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher;->getAction(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const-string p1, "key_boolean_type"

    const-string v1, "key_string_type"

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 p0, 0x0

    .line 59
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 54
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->reset()V

    .line 55
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->reset()V

    goto/16 :goto_6

    :pswitch_2
    if-nez p3, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    :goto_0
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->removeCondition(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    if-nez p3, :cond_1

    move-object p0, v2

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p3, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 45
    :goto_2
    invoke-static {}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->getInstance()Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->updateCondition(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_6

    :pswitch_4
    if-nez p3, :cond_3

    goto :goto_3

    .line 38
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    :goto_3
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->removeFeature(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    if-nez p3, :cond_4

    move-object p0, v2

    goto :goto_4

    .line 32
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    if-nez p3, :cond_5

    goto :goto_5

    .line 33
    :cond_5
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 34
    :goto_5
    invoke-static {}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->getInstance()Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->updateFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_6

    .line 26
    :pswitch_6
    const-class p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 28
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    :goto_6
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAction(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->valueOf(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    sget-object p0, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;->unknown:Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher$Action;

    :goto_0
    return-object p0
.end method
