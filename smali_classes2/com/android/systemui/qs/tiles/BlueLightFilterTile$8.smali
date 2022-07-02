.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;
.super Ljava/lang/Object;
.source "BlueLightFilterTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$1402(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
