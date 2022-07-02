.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchFullController"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchFullController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 212
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

    .line 215
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$CustomPanel;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$CustomPanel;

    .line 216
    sget-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LaunchFullController;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LaunchFullController;

    .line 214
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;)V

    return-void
.end method
