.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;
.super Ljava/lang/Object;
.source "BlueLightFilterTile.java"

# interfaces
.implements Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
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

    .line 138
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$000(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->greyscale_mode_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->access$100(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isGrayScale()Z

    move-result p0

    return p0
.end method
