.class final Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Lcom/android/systemui/media/MediaDeviceManager$Entry;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;->INSTANCE:Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaDeviceManager$intentReceiver$1$onReceive$1$1;->accept(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceManager$Entry;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaDeviceManager$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entry"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V

    .line 75
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->start()V

    return-void
.end method
