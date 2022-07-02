.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;
.super Ljava/lang/Object;
.source "BlueLightFilterTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->showLocationOnDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

.field final synthetic val$fromMenu:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    iput p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->val$fromMenu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 482
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setLocationMode(I)V

    .line 483
    iget p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->val$fromMenu:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 484
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0, p2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$1500(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Z)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 486
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setScheduledBluelight(I)V

    .line 487
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveBluelight(I)V

    :cond_1
    :goto_0
    return-void
.end method
