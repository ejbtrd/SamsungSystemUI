.class final Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 495
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$dismissSmartspaceRecommendation$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataManager;->getSmartspaceMediaData()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 495
    invoke-static {p0, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->access$notifySmartspaceMediaDataRemoved(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Z)V

    return-void
.end method
