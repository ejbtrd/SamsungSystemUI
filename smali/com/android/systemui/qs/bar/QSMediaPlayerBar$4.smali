.class Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;
.super Landroid/view/ViewOutlineProvider;
.source "QSMediaPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 324
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$400(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p1

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$500(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p1

    goto :goto_0

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$700(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$4;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpandedHeight:I

    add-int v4, p1, v0

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$800(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p0

    int-to-float v5, p0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
