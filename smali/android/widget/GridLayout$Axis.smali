.class final Landroid/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMPLETE:I = 0x2

.field private static final NEW:I = 0x0

.field private static final PENDING:I = 0x1


# instance fields
.field public arcs:[Landroid/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field forwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroid/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1162
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/widget/GridLayout$Axis;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Landroid/widget/GridLayout;Z)V
    .registers 5
    .parameter
    .parameter "horizontal"

    .prologue
    const/high16 v0, -0x8000

    const/4 v1, 0x0

    .line 1198
    iput-object p1, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1170
    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1173
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1176
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1179
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1182
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1185
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1188
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1191
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1195
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    .line 1196
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    .line 1199
    iput-boolean p2, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 1200
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1162
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;Z)V

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    .local p2, links:Landroid/widget/GridLayout$PackedMap;,"Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 1426
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    aget-object v1, v2, v0

    .line 1427
    .local v1, key:Landroid/widget/GridLayout$Interval;
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$MutableInt;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1429
    .end local v1           #key:Landroid/widget/GridLayout$Interval;
    :cond_1b
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1499
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_5b

    const-string/jumbo v7, "x"

    .line 1500
    .local v7, var:Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1502
    .local v2, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    .line 1503
    .local v0, arc:Landroid/widget/GridLayout$Arc;
    if-eqz v2, :cond_5f

    .line 1504
    const/4 v2, 0x0

    .line 1508
    :goto_20
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v5, v8, Landroid/widget/GridLayout$Interval;->min:I

    .line 1509
    .local v5, src:I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v8, Landroid/widget/GridLayout$Interval;->max:I

    .line 1510
    .local v1, dst:I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v6, v8, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1511
    .local v6, value:I
    if-ge v5, v1, :cond_66

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_57
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1499
    .end local v0           #arc:Landroid/widget/GridLayout$Arc;
    .end local v1           #dst:I
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #result:Ljava/lang/StringBuilder;
    .end local v5           #src:I
    .end local v6           #value:I
    .end local v7           #var:Ljava/lang/String;
    :cond_5b
    const-string/jumbo v7, "y"

    goto :goto_7

    .line 1506
    .restart local v0       #arc:Landroid/widget/GridLayout$Arc;
    .restart local v2       #first:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #result:Ljava/lang/StringBuilder;
    .restart local v7       #var:Ljava/lang/String;
    :cond_5f
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_20

    .line 1511
    .restart local v1       #dst:I
    .restart local v5       #src:I
    .restart local v6       #value:I
    :cond_66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-int v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_57

    .line 1516
    .end local v0           #arc:Landroid/widget/GridLayout$Arc;
    .end local v1           #dst:I
    .end local v5           #src:I
    .end local v6           #value:I
    :cond_91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private calculateMaxIndex()I
    .registers 9

    .prologue
    .line 1204
    const/4 v4, -0x1

    .line 1205
    .local v4, result:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_8
    if-ge v2, v0, :cond_38

    .line 1206
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1207
    .local v1, c:Landroid/view/View;
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1208
    .local v3, params:Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_35

    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1209
    .local v6, spec:Landroid/widget/GridLayout$Spec;
    :goto_1c
    iget-object v5, v6, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1210
    .local v5, span:Landroid/widget/GridLayout$Interval;
    iget v7, v5, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1211
    iget v7, v5, Landroid/widget/GridLayout$Interval;->max:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1212
    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1205
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1208
    .end local v5           #span:Landroid/widget/GridLayout$Interval;
    .end local v6           #spec:Landroid/widget/GridLayout$Spec;
    :cond_35
    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1c

    .line 1214
    .end local v1           #c:Landroid/view/View;
    .end local v3           #params:Landroid/widget/GridLayout$LayoutParams;
    :cond_38
    const/4 v7, -0x1

    if-ne v4, v7, :cond_3d

    const/high16 v4, -0x8000

    .end local v4           #result:I
    :cond_3d
    return v4
.end method

.method private computeArcs()V
    .registers 1

    .prologue
    .line 1463
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1464
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1465
    return-void
.end method

.method private computeGroupBounds()V
    .registers 9

    .prologue
    .line 1259
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    iget-object v5, v6, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v5, [Landroid/widget/GridLayout$Bounds;

    .line 1260
    .local v5, values:[Landroid/widget/GridLayout$Bounds;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    array-length v6, v5

    if-ge v2, v6, :cond_12

    .line 1261
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 1260
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1263
    :cond_12
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_19
    if-ge v2, v0, :cond_40

    .line 1264
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1265
    .local v1, c:Landroid/view/View;
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1266
    .local v3, lp:Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v6, :cond_3d

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1267
    .local v4, spec:Landroid/widget/GridLayout$Spec;
    :goto_2d
    iget-object v6, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    invoke-virtual {v6, v2}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/GridLayout$Bounds;

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v7, v1, v4, p0}, Landroid/widget/GridLayout$Bounds;->include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;)V

    .line 1263
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1266
    .end local v4           #spec:Landroid/widget/GridLayout$Spec;
    :cond_3d
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2d

    .line 1269
    .end local v1           #c:Landroid/view/View;
    .end local v3           #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_40
    return-void
.end method

.method private computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V
    .registers 9
    .parameter
    .parameter "min"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1294
    .local p1, links:Landroid/widget/GridLayout$PackedMap;,"Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    iget-object v3, p1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroid/widget/GridLayout$MutableInt;

    .line 1295
    .local v3, spans:[Landroid/widget/GridLayout$MutableInt;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v5, v3

    if-ge v1, v5, :cond_10

    .line 1296
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/widget/GridLayout$MutableInt;->reset()V

    .line 1295
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1300
    :cond_10
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v0, v5, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    .line 1301
    .local v0, bounds:[Landroid/widget/GridLayout$Bounds;
    const/4 v1, 0x0

    :goto_19
    array-length v5, v0

    if-ge v1, v5, :cond_37

    .line 1302
    aget-object v5, v0, v1

    invoke-virtual {v5, p2}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v2

    .line 1303
    .local v2, size:I
    invoke-virtual {p1, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$MutableInt;

    .line 1305
    .local v4, valueHolder:Landroid/widget/GridLayout$MutableInt;
    iget v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_35

    .end local v2           #size:I
    :goto_2c
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1301
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1305
    .restart local v2       #size:I
    :cond_35
    neg-int v2, v2

    goto :goto_2c

    .line 1307
    .end local v2           #size:I
    .end local v4           #valueHolder:Landroid/widget/GridLayout$MutableInt;
    :cond_37
    return-void
.end method

.method private computeLocations([I)V
    .registers 6
    .parameter "a"

    .prologue
    .line 1640
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Landroid/widget/GridLayout$Axis;->solve([Landroid/widget/GridLayout$Arc;[I)V

    .line 1641
    iget-boolean v3, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-nez v3, :cond_1a

    .line 1648
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 1649
    .local v1, a0:I
    const/4 v2, 0x0

    .local v2, i:I
    array-length v0, p1

    .local v0, N:I
    :goto_10
    if-ge v2, v0, :cond_1a

    .line 1650
    aget v3, p1, v2

    sub-int/2addr v3, v1

    aput v3, p1, v2

    .line 1649
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1653
    .end local v0           #N:I
    .end local v1           #a0:I
    .end local v2           #i:I
    :cond_1a
    return-void
.end method

.method private computeMargins(Z)V
    .registers 13
    .parameter "leading"

    .prologue
    .line 1603
    if-eqz p1, :cond_1e

    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1604
    .local v5, margins:[I
    :goto_4
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_b
    if-ge v2, v0, :cond_4a

    .line 1605
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1606
    .local v1, c:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_21

    .line 1604
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1603
    .end local v0           #N:I
    .end local v1           #c:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #margins:[I
    :cond_1e
    iget-object v5, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    goto :goto_4

    .line 1607
    .restart local v0       #N:I
    .restart local v1       #c:Landroid/view/View;
    .restart local v2       #i:I
    .restart local v5       #margins:[I
    :cond_21
    iget-object v8, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1608
    .local v4, lp:Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v8, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_44

    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1609
    .local v7, spec:Landroid/widget/GridLayout$Spec;
    :goto_2d
    iget-object v6, v7, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1610
    .local v6, span:Landroid/widget/GridLayout$Interval;
    if-eqz p1, :cond_47

    iget v3, v6, Landroid/widget/GridLayout$Interval;->min:I

    .line 1611
    .local v3, index:I
    :goto_33
    aget v8, v5, v3

    iget-object v9, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v9, v1, v10, p1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v3

    goto :goto_1b

    .line 1608
    .end local v3           #index:I
    .end local v6           #span:Landroid/widget/GridLayout$Interval;
    .end local v7           #spec:Landroid/widget/GridLayout$Spec;
    :cond_44
    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2d

    .line 1610
    .restart local v6       #span:Landroid/widget/GridLayout$Interval;
    .restart local v7       #spec:Landroid/widget/GridLayout$Spec;
    :cond_47
    iget v3, v6, Landroid/widget/GridLayout$Interval;->max:I

    goto :goto_33

    .line 1613
    .end local v1           #c:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v6           #span:Landroid/widget/GridLayout$Interval;
    .end local v7           #spec:Landroid/widget/GridLayout$Spec;
    :cond_4a
    return-void
.end method

.method private createArcs()[Landroid/widget/GridLayout$Arc;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    .local v3, mins:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v2, maxs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1438
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Landroid/widget/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1441
    iget-boolean v6, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    if-eqz v6, :cond_36

    .line 1443
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_36

    .line 1444
    new-instance v6, Landroid/widget/GridLayout$Interval;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v1, v7}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    new-instance v7, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v7, v8}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v3, v6, v7}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    .line 1443
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1450
    .end local v1           #i:I
    :cond_36
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    .line 1451
    .local v0, N:I
    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v8, v0}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v3, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1452
    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v0, v8}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v2, v6, v7, v8}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1455
    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v5

    .line 1456
    .local v5, sMins:[Landroid/widget/GridLayout$Arc;
    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v4

    .line 1458
    .local v4, sMaxs:[Landroid/widget/GridLayout$Arc;
    invoke-static {v5, v4}, Landroid/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/widget/GridLayout$Arc;

    return-object v6
.end method

.method private createGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    const-class v7, Landroid/widget/GridLayout$Spec;

    const-class v8, Landroid/widget/GridLayout$Bounds;

    invoke-static {v7, v8}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v1

    .line 1248
    .local v1, assoc:Landroid/widget/GridLayout$Assoc;,"Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Bounds;>;"
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_f
    if-ge v4, v0, :cond_3a

    .line 1249
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1250
    .local v3, c:Landroid/view/View;
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v5

    .line 1251
    .local v5, lp:Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_37

    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1252
    .local v6, spec:Landroid/widget/GridLayout$Spec;
    :goto_23
    iget-object v7, p0, Landroid/widget/GridLayout$Axis;->this$0:Landroid/widget/GridLayout;

    iget-object v8, v6, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget-boolean v9, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v7, v8, v9}, Landroid/widget/GridLayout;->getAlignment(Landroid/widget/GridLayout$Alignment;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/GridLayout$Alignment;->getBounds()Landroid/widget/GridLayout$Bounds;

    move-result-object v2

    .line 1253
    .local v2, bounds:Landroid/widget/GridLayout$Bounds;
    invoke-virtual {v1, v6, v2}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1248
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1251
    .end local v2           #bounds:Landroid/widget/GridLayout$Bounds;
    .end local v6           #spec:Landroid/widget/GridLayout$Spec;
    :cond_37
    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_23

    .line 1255
    .end local v3           #c:Landroid/view/View;
    .end local v5           #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_3a
    invoke-virtual {v1}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v7

    return-object v7
.end method

.method private createLinks(Z)Landroid/widget/GridLayout$PackedMap;
    .registers 9
    .parameter "min"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1284
    const-class v5, Landroid/widget/GridLayout$Interval;

    const-class v6, Landroid/widget/GridLayout$MutableInt;

    invoke-static {v5, v6}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v3

    .line 1285
    .local v3, result:Landroid/widget/GridLayout$Assoc;,"Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v2, v5, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Spec;

    .line 1286
    .local v2, keys:[Landroid/widget/GridLayout$Spec;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, v2

    .local v0, N:I
    :goto_12
    if-ge v1, v0, :cond_2e

    .line 1287
    if-eqz p1, :cond_25

    aget-object v5, v2, v1

    iget-object v4, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1288
    .local v4, span:Landroid/widget/GridLayout$Interval;
    :goto_1a
    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1286
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1287
    .end local v4           #span:Landroid/widget/GridLayout$Interval;
    :cond_25
    aget-object v5, v2, v1

    iget-object v5, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->inverse()Landroid/widget/GridLayout$Interval;

    move-result-object v4

    goto :goto_1a

    .line 1290
    :cond_2e
    invoke-virtual {v3}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    return-object v5
.end method

.method private getBackwardLinks()Landroid/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1321
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_b

    .line 1322
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1324
    :cond_b
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_17

    .line 1325
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1328
    :cond_17
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Landroid/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1310
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_b

    .line 1311
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1313
    :cond_b
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_16

    .line 1314
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout$Axis;->computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1315
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1317
    :cond_16
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .registers 3

    .prologue
    .line 1218
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_11

    .line 1219
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1221
    :cond_11
    iget v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .registers 4
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1681
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1682
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->size([I)I

    move-result v0

    return v0
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .registers 5
    .parameter
    .parameter "key"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1356
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout$Axis;->include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1357
    return-void
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V
    .registers 9
    .parameter
    .parameter "key"
    .parameter "size"
    .parameter "ignoreIfAlreadyPresent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1339
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-virtual {p2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 1353
    :goto_6
    return-void

    .line 1344
    :cond_7
    if-eqz p4, :cond_22

    .line 1345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    .line 1346
    .local v0, arc:Landroid/widget/GridLayout$Arc;
    iget-object v2, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1347
    .local v2, span:Landroid/widget/GridLayout$Interval;
    invoke-virtual {v2, p2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    .line 1352
    .end local v0           #arc:Landroid/widget/GridLayout$Arc;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #span:Landroid/widget/GridLayout$Interval;
    :cond_22
    new-instance v3, Landroid/widget/GridLayout$Arc;

    invoke-direct {v3, p2, p3}, Landroid/widget/GridLayout$Arc;-><init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private init([I)V
    .registers 3
    .parameter "locations"

    .prologue
    .line 1495
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1496
    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V
    .registers 11
    .parameter "axisName"
    .parameter "arcs"
    .parameter "culprits0"

    .prologue
    .line 1520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    .local v2, culprits:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v3, removed:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v1, 0x0

    .local v1, c:I
    :goto_b
    array-length v4, p2

    if-ge v1, v4, :cond_21

    .line 1523
    aget-object v0, p2, v1

    .line 1524
    .local v0, arc:Landroid/widget/GridLayout$Arc;
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_17

    .line 1525
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    :cond_17
    iget-boolean v4, v0, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1e

    .line 1528
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1531
    .end local v0           #arc:Landroid/widget/GridLayout$Arc;
    :cond_21
    sget-object v4, Landroid/widget/GridLayout;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " constraints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are inconsistent; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "permanently removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Landroid/widget/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-void
.end method

.method private relax([ILandroid/widget/GridLayout$Arc;)Z
    .registers 10
    .parameter "locations"
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 1479
    iget-boolean v6, p2, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v6, :cond_6

    .line 1491
    :cond_5
    :goto_5
    return v5

    .line 1482
    :cond_6
    iget-object v1, p2, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1483
    .local v1, span:Landroid/widget/GridLayout$Interval;
    iget v2, v1, Landroid/widget/GridLayout$Interval;->min:I

    .line 1484
    .local v2, u:I
    iget v3, v1, Landroid/widget/GridLayout$Interval;->max:I

    .line 1485
    .local v3, v:I
    iget-object v6, p2, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v4, v6, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1486
    .local v4, value:I
    aget v6, p1, v2

    add-int v0, v6, v4

    .line 1487
    .local v0, candidate:I
    aget v6, p1, v3

    if-le v0, v6, :cond_5

    .line 1488
    aput v0, p1, v3

    .line 1489
    const/4 v5, 0x1

    goto :goto_5
.end method

.method private setParentConstraints(II)V
    .registers 5
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1675
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMin:Landroid/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1676
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->parentMax:Landroid/widget/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1677
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1678
    return-void
.end method

.method private size([I)I
    .registers 3
    .parameter "locations"

    .prologue
    .line 1671
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[I)V
    .registers 15
    .parameter "arcs"
    .parameter "locations"

    .prologue
    .line 1556
    iget-boolean v10, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v10, :cond_26

    const-string v2, "horizontal"

    .line 1557
    .local v2, axisName:Ljava/lang/String;
    :goto_6
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 1558
    .local v0, N:I
    const/4 v8, 0x0

    .line 1560
    .local v8, originalCulprits:[Z
    const/4 v9, 0x0

    .local v9, p:I
    :goto_e
    array-length v10, p1

    if-ge v9, v10, :cond_31

    .line 1561
    invoke-direct {p0, p2}, Landroid/widget/GridLayout$Axis;->init([I)V

    .line 1564
    const/4 v5, 0x0

    .local v5, i:I
    :goto_15
    if-ge v5, v0, :cond_35

    .line 1565
    const/4 v3, 0x0

    .line 1566
    .local v3, changed:Z
    const/4 v6, 0x0

    .local v6, j:I
    array-length v7, p1

    .local v7, length:I
    :goto_1a
    if-ge v6, v7, :cond_2a

    .line 1567
    aget-object v10, p1, v6

    invoke-direct {p0, p2, v10}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v3, v10

    .line 1566
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1556
    .end local v0           #N:I
    .end local v2           #axisName:Ljava/lang/String;
    .end local v3           #changed:Z
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #length:I
    .end local v8           #originalCulprits:[Z
    .end local v9           #p:I
    :cond_26
    const-string/jumbo v2, "vertical"

    goto :goto_6

    .line 1569
    .restart local v0       #N:I
    .restart local v2       #axisName:Ljava/lang/String;
    .restart local v3       #changed:Z
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #length:I
    .restart local v8       #originalCulprits:[Z
    .restart local v9       #p:I
    :cond_2a
    if-nez v3, :cond_32

    .line 1570
    if-eqz v8, :cond_31

    .line 1571
    invoke-direct {p0, v2, p1, v8}, Landroid/widget/GridLayout$Axis;->logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V

    .line 1600
    .end local v3           #changed:Z
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #length:I
    :cond_31
    return-void

    .line 1564
    .restart local v3       #changed:Z
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #length:I
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1577
    .end local v3           #changed:Z
    .end local v6           #j:I
    .end local v7           #length:I
    :cond_35
    array-length v10, p1

    new-array v4, v10, [Z

    .line 1578
    .local v4, culprits:[Z
    const/4 v5, 0x0

    :goto_39
    if-ge v5, v0, :cond_50

    .line 1579
    const/4 v6, 0x0

    .restart local v6       #j:I
    array-length v7, p1

    .restart local v7       #length:I
    :goto_3d
    if-ge v6, v7, :cond_4d

    .line 1580
    aget-boolean v10, v4, v6

    aget-object v11, p1, v6

    invoke-direct {p0, p2, v11}, Landroid/widget/GridLayout$Axis;->relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v4, v6

    .line 1579
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 1578
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1584
    .end local v6           #j:I
    .end local v7           #length:I
    :cond_50
    if-nez v9, :cond_53

    .line 1585
    move-object v8, v4

    .line 1588
    :cond_53
    const/4 v5, 0x0

    :goto_54
    array-length v10, p1

    if-ge v5, v10, :cond_6d

    .line 1589
    aget-boolean v10, v4, v5

    if-eqz v10, :cond_67

    .line 1590
    aget-object v1, p1, v5

    .line 1592
    .local v1, arc:Landroid/widget/GridLayout$Arc;
    iget-object v10, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v10, v10, Landroid/widget/GridLayout$Interval;->min:I

    iget-object v11, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v11, v11, Landroid/widget/GridLayout$Interval;->max:I

    if-ge v10, v11, :cond_6a

    .line 1588
    .end local v1           #arc:Landroid/widget/GridLayout$Arc;
    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    .line 1595
    .restart local v1       #arc:Landroid/widget/GridLayout$Arc;
    :cond_6a
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/widget/GridLayout$Arc;->valid:Z

    .line 1560
    .end local v1           #arc:Landroid/widget/GridLayout$Arc;
    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_e
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/widget/GridLayout$Arc;"
        }
    .end annotation

    .prologue
    .line 1421
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/GridLayout$Arc;

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
    .registers 3
    .parameter "arcs"

    .prologue
    .line 1382
    new-instance v0, Landroid/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Axis$1;-><init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis$1;->sort()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArcs()[Landroid/widget/GridLayout$Arc;
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    if-nez v0, :cond_a

    .line 1469
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1471
    :cond_a
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_14

    .line 1472
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeArcs()V

    .line 1473
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1475
    :cond_14
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 1225
    iget v0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_a

    .line 1273
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->createGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1275
    :cond_a
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_14

    .line 1276
    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->computeGroupBounds()V

    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1279
    :cond_14
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1618
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    if-nez v0, :cond_f

    .line 1619
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1621
    :cond_f
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_18

    .line 1622
    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1623
    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1625
    :cond_18
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .registers 3

    .prologue
    .line 1656
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    if-nez v1, :cond_e

    .line 1657
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1658
    .local v0, N:I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1660
    .end local v0           #N:I
    :cond_e
    iget-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    if-nez v1, :cond_1a

    .line 1661
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v1}, Landroid/widget/GridLayout$Axis;->computeLocations([I)V

    .line 1662
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1664
    :cond_1a
    iget-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    return-object v1
.end method

.method public getMeasure(I)I
    .registers 6
    .parameter "measureSpec"

    .prologue
    const/4 v2, 0x0

    .line 1686
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1687
    .local v0, mode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1688
    .local v1, size:I
    sparse-switch v0, :sswitch_data_28

    .line 1699
    sget-boolean v3, Landroid/widget/GridLayout$Axis;->$assertionsDisabled:Z

    if-nez v3, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1690
    :sswitch_16
    const v3, 0x186a0

    invoke-direct {p0, v2, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    .line 1700
    :cond_1d
    :goto_1d
    return v2

    .line 1693
    :sswitch_1e
    invoke-direct {p0, v1, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    goto :goto_1d

    .line 1696
    :sswitch_23
    invoke-direct {p0, v2, v1}, Landroid/widget/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    goto :goto_1d

    .line 1688
    :sswitch_data_28
    .sparse-switch
        -0x80000000 -> :sswitch_23
        0x0 -> :sswitch_16
        0x40000000 -> :sswitch_1e
    .end sparse-switch
.end method

.method public getTrailingMargins()[I
    .registers 2

    .prologue
    .line 1629
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    if-nez v0, :cond_e

    .line 1630
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1632
    :cond_e
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_19

    .line 1633
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/GridLayout$Axis;->computeMargins(Z)V

    .line 1634
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1636
    :cond_19
    iget-object v0, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;
    .registers 13
    .parameter "arcs"

    .prologue
    .line 1362
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 1363
    .local v0, N:I
    new-array v6, v0, [[Landroid/widget/GridLayout$Arc;

    .line 1364
    .local v6, result:[[Landroid/widget/GridLayout$Arc;
    new-array v7, v0, [I

    .line 1365
    .local v7, sizes:[I
    move-object v2, p1

    .local v2, arr$:[Landroid/widget/GridLayout$Arc;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_d
    if-ge v4, v5, :cond_1e

    aget-object v1, v2, v4

    .line 1366
    .local v1, arc:Landroid/widget/GridLayout$Arc;
    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v8, v8, Landroid/widget/GridLayout$Interval;->min:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 1365
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1368
    .end local v1           #arc:Landroid/widget/GridLayout$Arc;
    :cond_1e
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1f
    array-length v8, v7

    if-ge v3, v8, :cond_2b

    .line 1369
    aget v8, v7, v3

    new-array v8, v8, [Landroid/widget/GridLayout$Arc;

    aput-object v8, v6, v3

    .line 1368
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1372
    :cond_2b
    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1373
    move-object v2, p1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v5, :cond_47

    aget-object v1, v2, v4

    .line 1374
    .restart local v1       #arc:Landroid/widget/GridLayout$Arc;
    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v3, v8, Landroid/widget/GridLayout$Interval;->min:I

    .line 1375
    aget-object v8, v6, v3

    aget v9, v7, v3

    add-int/lit8 v10, v9, 0x1

    aput v10, v7, v3

    aput-object v1, v8, v9

    .line 1373
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 1378
    .end local v1           #arc:Landroid/widget/GridLayout$Arc;
    :cond_47
    return-object v6
.end method

.method public invalidateStructure()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1711
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/widget/GridLayout$Axis;->maxIndex:I

    .line 1713
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1714
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1715
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1717
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->leadingMargins:[I

    .line 1718
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->trailingMargins:[I

    .line 1719
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->arcs:[Landroid/widget/GridLayout$Arc;

    .line 1721
    iput-object v1, p0, Landroid/widget/GridLayout$Axis;->locations:[I

    .line 1723
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    .line 1724
    return-void
.end method

.method public invalidateValues()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1727
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->groupBoundsValid:Z

    .line 1728
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->forwardLinksValid:Z

    .line 1729
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->backwardLinksValid:Z

    .line 1731
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1732
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1733
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->arcsValid:Z

    .line 1735
    iput-boolean v0, p0, Landroid/widget/GridLayout$Axis;->locationsValid:Z

    .line 1736
    return-void
.end method

.method public isOrderPreserved()Z
    .registers 2

    .prologue
    .line 1238
    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public layout(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 1706
    invoke-direct {p0, p1, p1}, Landroid/widget/GridLayout$Axis;->setParentConstraints(II)V

    .line 1707
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    .line 1708
    return-void
.end method

.method public setCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 1229
    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_2c

    invoke-direct {p0}, Landroid/widget/GridLayout$Axis;->getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_2c

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/widget/GridLayout$Axis;->horizontal:Z

    if-eqz v0, :cond_2f

    const-string v0, "column"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/widget/GridLayout;->access$100(Ljava/lang/String;)V

    .line 1234
    :cond_2c
    iput p1, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    .line 1235
    return-void

    .line 1230
    :cond_2f
    const-string/jumbo v0, "row"

    goto :goto_15
.end method

.method public setOrderPreserved(Z)V
    .registers 2
    .parameter "orderPreserved"

    .prologue
    .line 1242
    iput-boolean p1, p0, Landroid/widget/GridLayout$Axis;->orderPreserved:Z

    .line 1243
    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    .line 1244
    return-void
.end method
