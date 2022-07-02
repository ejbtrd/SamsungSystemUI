.class Lcom/android/systemui/mdm/MdmOverlayContainer$1;
.super Ljava/lang/Object;
.source "MdmOverlayContainer.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mdm/MdmOverlayContainer;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/mdm/MdmOverlayContainer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer$1;->this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer$1;->this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;

    invoke-static {v0}, Lcom/android/systemui/mdm/MdmOverlayContainer;->access$000(Lcom/android/systemui/mdm/MdmOverlayContainer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer$1;->this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;

    invoke-virtual {v0}, Lcom/android/systemui/mdm/MdmOverlayContainer;->updateMdmPolicy()V

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer$1;->this$0:Lcom/android/systemui/mdm/MdmOverlayContainer;

    invoke-static {p0, p1}, Lcom/android/systemui/mdm/MdmOverlayContainer;->access$002(Lcom/android/systemui/mdm/MdmOverlayContainer;I)I

    return-void
.end method
