.class public final Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;
.super Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
.source "SystemUIAnalyticsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntroStart"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getEventId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Dvcs013"

    return-object p0
.end method
