.class final Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager$Entry;->onDeviceListUpdate(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager;

.field final synthetic this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDeviceManager$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDeviceManager;->access$getTAG$p(Lcom/android/systemui/media/MediaDeviceManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeviceListUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-static {p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->access$updateCurrent(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    return-void
.end method
