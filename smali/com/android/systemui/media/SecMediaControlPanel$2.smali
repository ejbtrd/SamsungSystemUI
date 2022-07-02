.class Lcom/android/systemui/media/SecMediaControlPanel$2;
.super Landroid/view/ViewOutlineProvider;
.source "SecMediaControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecMediaControlPanel;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/media/MediaLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$2;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 207
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$2;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$300(Lcom/android/systemui/media/SecMediaControlPanel;)I

    move-result v3

    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$2;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$300(Lcom/android/systemui/media/SecMediaControlPanel;)I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$2;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$400(Lcom/android/systemui/media/SecMediaControlPanel;)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
