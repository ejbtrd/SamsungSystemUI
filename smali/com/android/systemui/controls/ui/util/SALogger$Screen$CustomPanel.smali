.class public final Lcom/android/systemui/controls/ui/util/SALogger$Screen$CustomPanel;
.super Lcom/android/systemui/controls/ui/util/SALogger$Screen;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomPanel"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$CustomPanel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$CustomPanel;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/util/SALogger$Screen$CustomPanel;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Screen$CustomPanel;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$CustomPanel;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Screen;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getScreenId()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    sget-object p0, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$CustomPanel;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$CustomPanel;

    return-object p0
.end method
