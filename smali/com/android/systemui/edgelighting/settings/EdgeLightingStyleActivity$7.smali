.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->scrollEffectListView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

.field final synthetic val$x:I


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iput p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1500(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;->val$x:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
