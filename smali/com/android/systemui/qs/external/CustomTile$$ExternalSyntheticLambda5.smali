.class public final synthetic Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/external/CustomTile;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda5;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/external/CustomTile;->$r8$lambda$t5rqIPcz1OFmuZBMfhiGtXw-aPE(Lcom/android/systemui/qs/external/CustomTile;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method
