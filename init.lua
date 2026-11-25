-- ==========================================
-- CONFIGURACIÓN ERGONÓMICA EN ESPAÑOL (Neovim)
-- ==========================================

-- 1. TECLA LÍDER Y LÍNEA DE COMANDOS
vim.g.mapleader = " "
vim.keymap.set('n', '<Space>', ':', { noremap = true, silent = false, desc = "Línea de comandos con Espacio" })

-- 2. MOVIMIENTOS NATIVOS EN MODO NORMAL, VISUAL Y OPERADOR
-- l (izq), j (arriba), k (abajo), ñ (der)
vim.keymap.set({'n', 'v', 'o'}, 'l', 'h', { noremap = true, desc = "Mover a la izquierda" })
vim.keymap.set({'n', 'v', 'o'}, 'j', 'k', { noremap = true, desc = "Mover arriba" })
vim.keymap.set({'n', 'v', 'o'}, 'k', 'j', { noremap = true, desc = "Mover abajo" })
vim.keymap.set({'n', 'v', 'o'}, 'ñ', 'l', { noremap = true, desc = "Mover a la derecha" })

-- Reubicación de teclas desplazadas
vim.keymap.set({'n', 'v', 'o'}, 'h', 'N', { noremap = true, desc = "Búsqueda previa (N)" })
vim.keymap.set('n', 'N', 'R', { noremap = true, desc = "Modo Reemplazar (R)" })

-- 3. MODO INSERTAR (ESCRIBIR CÓDIGO Y NAVEGACIÓN)
-- Salir del modo Insertar rápido con Tab
vim.keymap.set('i', '<Tab>', '<Esc>', { noremap = true, desc = "Salir a modo Normal" })
-- Tabulación manual con Shift + Tab
vim.keymap.set('i', '<S-Tab>', '<Tab>', { noremap = true, desc = "Tabular manualmente" })

-- Permitir que el cursor se mueva un carácter más allá del final de la línea en modo Normal
vim.opt.virtualedit = "onemore"

-- Reemplazo de ñ al tipear código: ñ -> ;  |  Shift+ñ -> :
vim.keymap.set('i', 'ñ', ';', { noremap = true, desc = "Escribir punto y coma" })
vim.keymap.set('i', 'Ñ', ':', { noremap = true, desc = "Escribir dos puntos" })

-- 4. EXTRAS DE PRODUCTIVIDAD
-- Mover bloques de texto seleccionados en modo Visual
vim.keymap.set('v', 'J', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Mover bloque arriba" })
vim.keymap.set('v', 'K', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Mover bloque abajo" })

-- Limpiar resaltado de búsqueda (<Leader> + h)
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true, desc = "Limpiar resaltado de búsqueda" })
