.class Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$4500(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 938
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$4600(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)Landroid/view/ViewGroup;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$id;->available_networks_group:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
