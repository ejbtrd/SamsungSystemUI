.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenSpinner"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$OpenSpinner;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "systemUIAnalyticsWrapper"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;

    sget-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$OpenSpinner;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$OpenSpinner;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;)V

    return-void
.end method
