.class public final Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$NoDeviceSelected;
.super Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
.source "SystemUIAnalyticsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoDeviceSelected"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$NoDeviceSelected;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$NoDeviceSelected;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$NoDeviceSelected;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$NoDeviceSelected;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Dvcs04"

    return-object p0
.end method
