.class public final Lcom/android/systemui/uiautomator/protocol/Protocol;
.super Ljava/lang/Object;
.source "Protocol.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/protocol/Protocol$Companion;,
        Lcom/android/systemui/uiautomator/protocol/Protocol$Command;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/uiautomator/protocol/Protocol$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uiautomator/protocol/Protocol$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uiautomator/protocol/Protocol$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/uiautomator/protocol/Protocol;->Companion:Lcom/android/systemui/uiautomator/protocol/Protocol$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommand(Ljava/lang/String;)Lcom/android/systemui/uiautomator/protocol/Protocol$Command;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "method"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/uiautomator/protocol/Protocol$Command;->valueOf(Ljava/lang/String;)Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    sget-object p0, Lcom/android/systemui/uiautomator/protocol/Protocol$Command;->none:Lcom/android/systemui/uiautomator/protocol/Protocol$Command;

    :goto_0
    return-object p0
.end method
