.class public abstract Lcom/android/systemui/controls/ui/util/SALogger$Event;
.super Ljava/lang/Object;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchDevices;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppList;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$IntroStart;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$AddDevices;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$Reorder;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchSmartThings;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSpinnerApp;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSmallTypeCard;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMainActionButton;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapCardLayout;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$MoveCard;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppListOnManageApps;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOffOnManageApps;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$SettingsTapUseWhileUnlocked;,
        Lcom/android/systemui/controls/ui/util/SALogger$Event$UseWhileUnlockedOnOff;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSALogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SALogger.kt\ncom/android/systemui/controls/ui/util/SALogger$Event\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getEventId(Lcom/android/systemui/controls/ui/ControlViewHolder;)Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
    .locals 0
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "cvh"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->hasActionIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapCardWithButton;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapCardWithButton;

    goto :goto_0

    .line 274
    :cond_0
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapCardWithoutButton;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapCardWithoutButton;

    :goto_0
    return-object p0
.end method

.method protected final getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/android/systemui/controls/ui/Behavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    instance-of v0, p1, Lcom/android/systemui/controls/ui/StatusBehavior;

    const-string v1, "Tap to open"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/controls/ui/TouchBehavior;

    if-eqz v0, :cond_1

    .line 258
    check-cast p1, Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p0

    instance-of p0, p0, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p0, :cond_7

    const-string v1, "Stateless toggle"

    goto :goto_0

    .line 261
    :cond_1
    instance-of v0, p1, Lcom/android/systemui/controls/ui/ToggleBehavior;

    if-eqz v0, :cond_2

    const-string v1, "Toggle"

    goto :goto_0

    .line 262
    :cond_2
    instance-of v0, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    if-eqz v0, :cond_4

    .line 263
    check-cast p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string v1, "Toggle with slider"

    goto :goto_0

    :cond_3
    const-string v1, "Range"

    goto :goto_0

    .line 266
    :cond_4
    instance-of v0, p1, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    if-eqz v0, :cond_7

    .line 267
    check-cast p1, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getSubBehavior()Lcom/android/systemui/controls/ui/Behavior;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger$Event;->getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move-object v1, p0

    :cond_7
    :goto_0
    return-object v1
.end method

.method public abstract sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
