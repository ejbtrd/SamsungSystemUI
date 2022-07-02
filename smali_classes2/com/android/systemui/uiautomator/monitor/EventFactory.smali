.class public final Lcom/android/systemui/uiautomator/monitor/EventFactory;
.super Ljava/lang/Object;
.source "EventFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/uiautomator/monitor/EventFactory;->Companion:Lcom/android/systemui/uiautomator/monitor/EventFactory$Companion;

    return-void
.end method
