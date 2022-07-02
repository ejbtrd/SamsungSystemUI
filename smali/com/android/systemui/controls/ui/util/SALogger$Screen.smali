.class public abstract Lcom/android/systemui/controls/ui/util/SALogger$Screen;
.super Ljava/lang/Object;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$Intro;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$ChooseDevices;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$IntroNoAppsToShow;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$CustomPanel;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$ManageApps;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$Setting;,
        Lcom/android/systemui/controls/ui/util/SALogger$Screen$UseWhile;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SALogger$Screen;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getScreenId()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
